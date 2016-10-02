module Components
  module Home
    class Show < React::Component::Base

      param :say_hello_to

      def render
        div do
        puts "Rendering my first component!"
        #{}"hello #{params.say_hello_to if params.say_hello_to}"
        Clock(name: params.say_hello_to)
        Snarf()
      end
      end
    end
  end
end
=begin
module Components
  module Home
    class Show

      include React::Router

      routes(path: "/") do  # change path to be the base path
        # you will probably want to update your config/routes.rb file so that it matches all
        # subroutes: i.e. get '(*subroutes)' => "home#show"
        # basic route has:
        #   a path
        #   a name - used to reference the route in methods like redirect, and link)
        #   a handler - the component that will be mounted on this route
        route(path: "subroute1-path", name: :subroute1, handler: Subroute1Component)
        route(path: "subroute2-path", name: :subroute2, handler: Subroute2Component)
        # routes can take parameters designated with a colon:
        route(path: "subroute3-path/:user_id", name: subroute3, handler: Subroute3Component)
        # the redirect method will transition any incoming matching routes to a new route
        redirect(from: "/", to: :subroute1)
        # the not_found method indicates which component to load if no route matches:
        not_found(handler: NotFound)
      end

      router_param :user_id, as: :user do |id|
        # Translate incoming route params to internal values.
        # In this case we will refer to the translated user_id as user.
        # The block param (id) will have the value of the param.
        # This is useful for looking up ActiveRecord models by ids, etc.
      end

      def show # note that the top level router has a show method NOT render
        div do
          #    content to display on every route
          # link generates an anchor tag.
          link(to: :subroute3, params: {user_id: 12}, class: "link-class") { "Click to go to subroute3" }
          # within an event handler use transition_to to move to a new route
          # the route_handler method will display the current route, it can be called in the
          # router, or in some child component.
          route_handler
        end
      end
    end
  end
end
=end
