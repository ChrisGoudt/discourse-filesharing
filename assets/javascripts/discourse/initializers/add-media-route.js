// file: assets/javascripts/discourse/initializers/add-media-route.js
import { withPluginApi } from "discourse/lib/plugin-api";

export default {
  name: "discourse-filesharing-add-media-route",

  initialize() {
    withPluginApi("1.10.0", (api) => {
      if (!api.container.lookup("service:site-settings").media_enabled) {
        return;
      }

      api.addRoute("media", { path: "/media" });
    });
  },
};
