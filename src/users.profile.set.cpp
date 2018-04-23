#include <slacking.hpp>
#include <json.hpp>
#include "token.hpp"

using json = nlohmann::json;
using namespace std;

int main(int argc, char const *argv[]) {
  if(argc != 3) {
    cout << "usage: users.profile.set [field] [value]" << endl;
    return -1;
  }
  slack::create(SLACK_TKN, false);
  json j;
  j["name"] = argv[1];
  j["value"] = argv[2];
  slack::post("users.profile.set", j);
  return 0;
}
