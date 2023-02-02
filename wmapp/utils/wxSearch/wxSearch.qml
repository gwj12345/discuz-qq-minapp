<template name="wxSearch">
  <view class="wxSearch" bindtap="wxSearchTap"  style="display:{{wxSearchData.view.isShow ? 'block':'none'}};height:{{wxSearchData.view.seachHeight}}px;top:{{wxSearchData.view.barHeight}}px;">
    <view  class="wxSearchInner">

        <view class="wxSearchMindKey">
            <view class="wxSearchMindKeyList">
                <block wx:for="{{wxSearchData.mindKeys}}">
                    <view class="wxSearchMindKeyItem" bindtap="wxSearchKeyTap" data-key="{{item}}">{{item}}</view>
                </block>
            </view>
        </view>

        <view class="wxSearchKey" style="display:{{wxSearchData.view.isShowSearchKey ? 'block':'none'}}">
            <text class="wxSearchTitle">热门搜索</text>
            <view class="wxSearchKeyList">
                <block wx:for="{{wxSearchData.keys}}">
                    <view class="wxSearchKeyItem" bindtap="wxSearchKeyTap" data-key="{{item}}">{{item}}</view>
                </block>
            </view>
        </view>
        <view class="wxSearchHistory" style="display:{{wxSearchData.view.isShowSearchHistory ? 'block':'none'}}">
            <text class="wxSearchTitle">搜索历史</text>
            <view wx:if="{{wxSearchData.his[0]}}" class="wxSearchHistoryList">
                <block wx:for="{{wxSearchData.his}}">
                    <view class="wxSearchHistoryItem">
                        <text class="wxSearchHistoryItemText" bindtap="wxSearchKeyTap" data-key="{{item}}">{{item}}</text> 
                        <text class="wxSearchHistoryItemDel" bindtap="wxSearchDeleteKey" data-key="{{item}}" data-key="{{item}}">删除</text>
                    </view>
                </block>
                <view class="wxSearchDeleteAllBtn" bindtap="wxSearchDeleteAll">清除历史</view>
            </view>
            <view wx:else>
                <view class="wxSearchHistoryEmpty">搜索历史为空</view>
            </view>
        </view>
    </view>
  </view>
</template>