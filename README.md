Whtat we do:

- add geocoder
- https://github.com/alexreisner/geocoder

temrinal:

railc c
result = Geocoder.search('Warsaw')
result 
result.first
result.first.coordinates

kyiv = Geocoder.search('Kyiv, Ukraine')
kyiv
kyiv.first.coordinates

Geocoder::Calculations.geographic_center([result.first.coordinates, kyiv.first.coordinates])


You take this  51.43743165156015, 25.85815251571844 and paste in google search 