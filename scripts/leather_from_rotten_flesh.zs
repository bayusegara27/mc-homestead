furnace.remove(<item:minecraft:leather>);

craftingTable.removeByName("betterend:stripes_to_leather");
craftingTable.removeByName("betterend:leather_to_stripes");

furnace.addJsonRecipe("leather_stripe_from_rotten_flesh", {
ingredient: <item:minecraft:rotten_flesh>,
result: <item:betterend:leather_stripe>.registryName,
experience: 0.35 as float,
cookingtime:100
});

craftingTable.addShaped("homestead.leather_stripe_to_leather", <item:minecraft:leather>, [
  [<item:betterend:leather_stripe>, <item:betterend:leather_stripe>, <item:betterend:leather_stripe>],
  [<item:minecraft:air>, <item:betterend:leather_stripe>, <item:minecraft:air>],
  [<item:betterend:leather_stripe>, <item:betterend:leather_stripe>, <item:betterend:leather_stripe>]
]);

craftingTable.addShapeless("homestead.leather_to_betterend_stripes", <item:betterend:leather_stripe> * 7, [<item:minecraft:leather>]);