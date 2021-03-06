import mapboxgl from 'mapbox-gl'

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const initMapBox = () => {
  const mapElement = document.getElementById('map');
  const markers = JSON.parse(mapElement.dataset.markers);

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v11',
    });

    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);

    fitMapToMarkers(map, markers);
    });
  };
};

export { initMapBox };
