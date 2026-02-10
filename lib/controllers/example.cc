#include "example.h"

void example::asyncHandleHttpRequest(
    const HttpRequestPtr &req,
    std::function<void(const HttpResponsePtr &)> &&callback) {
  auto resp = HttpResponse::newHttpResponse();
  resp->setStatusCode(k200OK);
  resp->setContentTypeCode(CT_TEXT_PLAIN);
  resp->setBody("Hello, World!");
  callback(resp);
}
