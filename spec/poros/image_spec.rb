require 'rails_helper'

RSpec.describe Image do
  it "exists" do
    data = {
            "page": 5,
            "per_page": 15,
            "photos": [
              {
                  "id": 2910299,
                  "width": 3448,
                  "height": 4592,
                  "url": "https://www.pexels.com/photo/man-leaning-on-wall-2910299/",
                  "photographer": "Aidan Roof",
                  "photographer_url": "https://www.pexels.com/@aidan-roof-1271136",
                  "photographer_id": 1271136,
                  "src": {
                      "original": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg",
                      "large2x": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/2910299/pexels-photo-2910299.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 210374,
                  "width": 2199,
                  "height": 1210,
                  "url": "https://www.pexels.com/photo/architecture-attractions-building-cheesman-park-210374/",
                  "photographer": "Pixabay",
                  "photographer_url": "https://www.pexels.com/@pixabay",
                  "photographer_id": 2659,
                  "src": {
                      "original": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg",
                      "large2x": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/210374/pexels-photo-210374.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 33224,
                  "width": 4592,
                  "height": 3056,
                  "url": "https://www.pexels.com/photo/aeroplane-aircraft-airplane-aviation-33224/",
                  "photographer": "Pixabay",
                  "photographer_url": "https://www.pexels.com/@pixabay",
                  "photographer_id": 2659,
                  "src": {
                      "original": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg",
                      "large2x": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/33224/oldtimer-aircraft-take-off-aviation.jpg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 3182776,
                  "width": 6000,
                  "height": 4004,
                  "url": "https://www.pexels.com/photo/photo-of-people-looking-on-laptop-3182776/",
                  "photographer": "fauxels",
                  "photographer_url": "https://www.pexels.com/@fauxels",
                  "photographer_id": 1281351,
                  "src": {
                      "original": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg",
                      "large2x": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/3182776/pexels-photo-3182776.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 3182824,
                  "width": 6000,
                  "height": 4000,
                  "url": "https://www.pexels.com/photo/photo-of-people-holding-glasses-3182824/",
                  "photographer": "fauxels",
                  "photographer_url": "https://www.pexels.com/@fauxels",
                  "photographer_id": 1281351,
                  "src": {
                      "original": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg",
                      "large2x": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/3182824/pexels-photo-3182824.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 2706750,
                  "width": 6240,
                  "height": 4160,
                  "url": "https://www.pexels.com/photo/union-station-building-2706750/",
                  "photographer": "Thomas Ward",
                  "photographer_url": "https://www.pexels.com/@thomasleeward",
                  "photographer_id": 220769,
                  "src": {
                      "original": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg",
                      "large2x": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/2706750/pexels-photo-2706750.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 4622225,
                  "width": 3500,
                  "height": 2333,
                  "url": "https://www.pexels.com/photo/man-in-gray-sweater-sitting-beside-woman-in-green-shirt-4622225/",
                  "photographer": "cottonbro",
                  "photographer_url": "https://www.pexels.com/@cottonbro",
                  "photographer_id": 1437723,
                  "src": {
                      "original": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg",
                      "large2x": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/4622225/pexels-photo-4622225.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 2269614,
                  "width": 4000,
                  "height": 6000,
                  "url": "https://www.pexels.com/photo/traffic-lights-2269614/",
                  "photographer": "Spencer Selover",
                  "photographer_url": "https://www.pexels.com/@spencer-selover-142259",
                  "photographer_id": 142259,
                  "src": {
                      "original": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg",
                      "large2x": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/2269614/pexels-photo-2269614.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 2269617,
                  "width": 4000,
                  "height": 6000,
                  "url": "https://www.pexels.com/photo/concrete-buildings-2269617/",
                  "photographer": "Spencer Selover",
                  "photographer_url": "https://www.pexels.com/@spencer-selover-142259",
                  "photographer_id": 142259,
                  "src": {
                      "original": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg",
                      "large2x": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/2269617/pexels-photo-2269617.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 3289416,
                  "width": 2500,
                  "height": 3701,
                  "url": "https://www.pexels.com/photo/photo-of-woman-wearing-yellow-sweater-3289416/",
                  "photographer": "Aidan Roof",
                  "photographer_url": "https://www.pexels.com/@aidan-roof-1271136",
                  "photographer_id": 1271136,
                  "src": {
                      "original": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg",
                      "large2x": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/3289416/pexels-photo-3289416.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 1325757,
                  "width": 7952,
                  "height": 5304,
                  "url": "https://www.pexels.com/photo/man-in-gray-dress-shirt-sitting-on-chair-1325757/",
                  "photographer": "Jopwell",
                  "photographer_url": "https://www.pexels.com/@jopwell",
                  "photographer_id": 567375,
                  "src": {
                      "original": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg",
                      "large2x": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/1325757/pexels-photo-1325757.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 1325761,
                  "width": 7951,
                  "height": 4919,
                  "url": "https://www.pexels.com/photo/monochrome-photo-of-people-near-wooden-table-1325761/",
                  "photographer": "Jopwell",
                  "photographer_url": "https://www.pexels.com/@jopwell",
                  "photographer_id": 567375,
                  "src": {
                      "original": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg",
                      "large2x": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/1325761/pexels-photo-1325761.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 2422861,
                  "width": 3448,
                  "height": 4592,
                  "url": "https://www.pexels.com/photo/curtain-wall-high-rise-building-beside-transmission-tower-2422861/",
                  "photographer": "Aidan Roof",
                  "photographer_url": "https://www.pexels.com/@aidan-roof-1271136",
                  "photographer_id": 1271136,
                  "src": {
                      "original": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png",
                      "large2x": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/2422861/pexels-photo-2422861.png?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 4483556,
                  "width": 6000,
                  "height": 4000,
                  "url": "https://www.pexels.com/photo/men-working-in-a-warehouse-4483556/",
                  "photographer": "Tiger Lily",
                  "photographer_url": "https://www.pexels.com/@tiger-lily",
                  "photographer_id": 2700415,
                  "src": {
                      "original": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg",
                      "large2x": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/4483556/pexels-photo-4483556.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              },
              {
                  "id": 3289417,
                  "width": 2500,
                  "height": 3701,
                  "url": "https://www.pexels.com/photo/photo-of-woman-leaning-on-handrail-3289417/",
                  "photographer": "Aidan Roof",
                  "photographer_url": "https://www.pexels.com/@aidan-roof-1271136",
                  "photographer_id": 1271136,
                  "src": {
                      "original": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg",
                      "large2x": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                      "large": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
                      "medium": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&h=350",
                      "small": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&h=130",
                      "portrait": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=1200&w=800",
                      "landscape": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&fit=crop&h=627&w=1200",
                      "tiny": "https://images.pexels.com/photos/3289417/pexels-photo-3289417.jpeg?auto=compress&cs=tinysrgb&dpr=1&fit=crop&h=200&w=280"
                  },
                  "liked": false
              }
            ]
        }

    symbolized = data.deep_symbolize_keys
    location = 'denver,co'

    cli = Image.new(symbolized, location)

    expect(cli).to be_an(Image)
    expect(cli.image).to be_a(Hash)
    expect(cli.image).to have_key(:location)
    expect(cli.image[:location]).to be_a(String)
    expect(cli.image).to have_key(:image_url)
    expect(cli.image[:image_url]).to be_a(String)
    expect(cli.image).to have_key(:credit)
    expect(cli.image[:credit]).to be_a(Hash)
    expect(cli.image[:credit]).to have_key(:source)
    expect(cli.image[:credit][:source]).to be_a(String)
    expect(cli.image[:credit]).to have_key(:author)
    expect(cli.image[:credit][:author]).to be_a(String)
  end
end
