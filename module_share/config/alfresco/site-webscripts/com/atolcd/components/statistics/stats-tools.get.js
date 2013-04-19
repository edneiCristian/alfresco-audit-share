function main()
{
   // get the tool info from the request context
   var toolInfo = context.properties["statistic-tools"];

   // resolve the message labels
   for (var g = 0, group; g < toolInfo.length; g++)
   {
      group = toolInfo[g];
      for (var i = 0, info; i < group.length; i++)
      {
         info = group[i];
         info.label = msg.get(info.label);
         info.description = msg.get(info.description);
         if (info.group != "")
         {
            info.groupLabel = msg.get(info.groupLabel);
         }
      }
   }

   model.tools = toolInfo;
}

main();