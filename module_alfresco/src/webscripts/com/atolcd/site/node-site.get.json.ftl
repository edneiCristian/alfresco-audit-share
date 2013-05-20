<#--
 * Copyright (C) 2013 Atol Conseils et Développements.
 * http://www.atolcd.com/
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
-->

<#escape x as jsonUtils.encodeJSONString(x)>
  {
    <#if url.templateArgs.store_type?? && url.templateArgs.store_id?? && url.templateArgs.id??>
      <#assign nodeRef = url.templateArgs.store_type + "://" + url.templateArgs.store_id + "/" + url.templateArgs.id />
      "siteShortName": "${shareStatsutils.getDocumentSite(nodeRef)!""}"
      <#if args.checkDates??>
        <#-- HACK to know if it's a file creation or an update -->
        <#assign node = companyhome.nodeByReference[nodeRef]!"" />
        <#if node?has_content>
          , "isFileCreation": ${(node.properties["cm:created"]?datetime == node.properties["cm:modified"]?datetime)?string}
        </#if>
      </#if>
    </#if>
  }
</#escape>