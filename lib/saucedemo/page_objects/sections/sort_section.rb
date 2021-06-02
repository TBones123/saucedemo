class SortSection < SitePrism::Section
  element :name_A_to_Z, '#header_container > div.header_secondary_container > div.right_component > span > select > option:nth-child(1)'
  element :name_Z_to_A, '#header_container > div.header_secondary_container > div.right_component > span > select > option:nth-child(2)'
  element :price_Low_to_Hight, '#header_container > div.header_secondary_container > div.right_component > span > select > option:nth-child(3)'
  element :price_Hight_to_Low, '#header_container > div.header_secondary_container > div.right_component > span > select > option:nth-child(4)'
end
