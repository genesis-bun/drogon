#pragma once

#include <drogon/HttpSimpleController.h>

using namespace drogon;

class example : public drogon::HttpSimpleController<example> {
public:
  virtual void asyncHandleHttpRequest(
      const HttpRequestPtr &req,
      std::function<void(const HttpResponsePtr &)> &&callback);
  PATH_LIST_BEGIN
  PATH_ADD("/api", Get);
  PATH_LIST_END
};
