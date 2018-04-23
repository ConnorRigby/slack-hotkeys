#include <slacking.hpp>
#include <json.hpp>
#include "token.hpp"

using json = nlohmann::json;
using namespace std;

int main(int argc, char const *argv[]) {
  if(argc != 3) {
    cout << "usage: chat.postMessage [channel] [message]" << endl;
    return -1;
  }
  slack::create(SLACK_TKN, false);
  json j;
  j["channel"] = argv[1];
  j["text"] = argv[2];
  j["as_user"] = true;
  // cout << j.dump(4) << endl;
  slack::post("chat.postMessage", j);
  return 0;
}
