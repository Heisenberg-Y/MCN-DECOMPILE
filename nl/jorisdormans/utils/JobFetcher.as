package nl.jorisdormans.utils {

import flash.net.URLLoader;
import flash.net.URLLoaderDataFormat;
import flash.net.URLRequestMethod;
import flash.net.URLRequest;
import flash.events.Event;
import flash.events.IOErrorEvent;

public class JobFetcher {

    private var handler:Function
    private var errHandler:Function

    private var dev_server:String = "http://10.0.0.62:8080"
    private var server:String = "http://localhost:8080"

    private var jobId:Number = -1;

    public function fetchNext(handler:Function, errHandler:Function):void {
        var url:String = server + "/api/job/next";
        var request:URLRequest = new URLRequest(url);
        request.method = URLRequestMethod.GET;
        var loader:URLLoader = new URLLoader()
        loader.dataFormat = URLLoaderDataFormat.TEXT;
        loader.addEventListener(Event.COMPLETE, this.completeNextHandler);
        loader.addEventListener(IOErrorEvent.IO_ERROR, this.errNextHandler);
        loader.load(request)
        this.handler = handler
        this.errHandler = errHandler
    }

    public function fetchDetail(id:Number, handler:Function, err:Function):void {
        var url:String = server + "/api/job/" + id + "/csv";
        var request:URLRequest = new URLRequest(url);
        request.method = URLRequestMethod.GET;
        var loader:URLLoader = new URLLoader()
        loader.dataFormat = URLLoaderDataFormat.TEXT;
        loader.addEventListener(Event.COMPLETE, this.completeDetailHandler);
        loader.addEventListener(IOErrorEvent.IO_ERROR, this.errDetailHandler);
        loader.load(request)
        this.handler = handler
        this.errHandler = err
        this.jobId = id
    }

    public function postSuccess(id:Number):void {
        var url:String = server + "/api/job/" + id + "/success";
        var request:URLRequest = new URLRequest(url);
        request.method = URLRequestMethod.GET;
        var loader:URLLoader = new URLLoader()
        loader.dataFormat = URLLoaderDataFormat.TEXT;
        loader.addEventListener(Event.COMPLETE, this.completePostJobSuccess);
        loader.load(request)
    }

    public function postFail(id:Number):void {
        var url:String = server + "/api/job/" + id + "/fail";
        var request:URLRequest = new URLRequest(url);
        request.method = URLRequestMethod.GET;
        var loader:URLLoader = new URLLoader()
        loader.dataFormat = URLLoaderDataFormat.TEXT;
        loader.addEventListener(Event.COMPLETE, this.completePostJobSuccess);
        loader.load(request)
    }

    private function completeDetailHandler(event:Event):void {
        var loader:URLLoader = URLLoader(event.target);
        var job:RemoteJob = new RemoteJob()
        job.data = loader.data
        job.id = jobId
        this.handler(job)
    }

    private function completeNextHandler(event:Event):void {
        var loader:URLLoader = URLLoader(event.target);
        var job:RemoteJob = new RemoteJob()
        job.id = loader.data
        this.handler(job)
    }

    private function completePostJobSuccess(event:Event):void {

    }

    private function errNextHandler(event:Event):void {
        this.errHandler(event)
    }

    private function errDetailHandler(event:Event):void {
        this.errHandler(event)
    }

}
}