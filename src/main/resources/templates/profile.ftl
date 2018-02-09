
<@override name="title">${profileUser.user.name}的个人主页 - 智乎</@override>
<@extends name="header.ftl"></@extends>
<link rel="stylesheet" href="../styles/index.css">
<link rel="stylesheet" href="../styles/detail.css">

<@extends name="feedtemplate.ftl"></@extends>
    <div class="zg-wrap zu-main clearfix " role="main">
        <div class="zm-profile-section-wrap zm-profile-followee-page">
            <span>
           <a>${profileUser.user.name}</a> 关注了 ${profileUser.followerCount} 人
                    </span>
                </div>-->
                <div class="zm-profile-section-list">
                    <div id="zh-profile-follows-list">
                        <div class="zh-general-list clearfix">
                            <div class="zm-profile-card zm-profile-section-item zg-clear no-hovercard">
                                <div class="zg-right">
                                    <#if profileUser.followed>
                                    <button class="zg-btn zg-btn-unfollow zm-rich-follow-btn small nth-0
                                    js-follow-user" data-status="1" data-id="${profileUser.user.id}">取消关注</button>
                                    <#else>
                                    <button class="zg-btn zg-btn-follow zm-rich-follow-btn small nth-0
                                    js-follow-user" data-id="${profileUser.user.id}">关注</button>
                                    </#if>
                                </div>
                                <a title="Barty" class="zm-item-link-avatar" href="/user/${profileUser.user.id}">
                                    <img src="${profileUser.user.headUrl}" class="zm-item-img-avatar">
                                </a>
                                <div class="zm-list-content-medium">
                                    <h2 class="zm-list-content-title"><a data-tip="p$t$buaabarty" href="/user/${profileUser.user.id}" class="zg-link">${profileUser.user.name}</a></h2>

                                    <!-- <div class="zg-big-gray">计蒜客教研首席打杂</div> -->
                                    <div class="details zg-gray">
                                        <a target="_blank" href="/user/${profileUser.user.id}/followers" class="zg-link-gray-normal">${profileUser.followerCount}粉丝</a>
                                        /
                                        <a target="_blank" href="/user/${profileUser.user.id}/followees" class="zg-link-gray-normal">${profileUser.followeeCount}关注</a>
                                        /
                                        <a target="_blank" href="#" class="zg-link-gray-normal">${profileUser.answerCount} 回答</a>
                                        /
                                        <a target="_blank" href="#" class="zg-link-gray-normal">${agreeCount} 赞同</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <div class="zu-main-content">
            <div class="zu-main-content-inner">
                <div class="zg-section" id="zh-home-list-title">
                    <i class="zg-icon zg-icon-feedlist"></i>最新动态
                    <span class="zg-right zm-noti-cleaner-setting" style="list-style:none">
                        <a href="/settings" class="zg-link-gray-normal">
                            <i class="zg-icon zg-icon-settings"></i>设置
                        </a>
                    </span>
                </div>
                <div class="zu-main-feed-con navigable" data-feedtype="topstory" id="zh-question-list">
                    <div id="js-home-feed-list" class="zh-general-list topstory clearfix">
                    <#list feeds as vo>
                    <#if (vo.type==1)>
                        <@answer_question vo=vo />
                    <#elseif (vo.type==4)>
                        <@follow_question vo=vo />
                    <#elseif (vo.type==0)>
                        <@like_question vo=vo />
                    </#if>
                    </#list>
                        <#list vos as vo>
                        <div class="feed-item folding feed-item-hook feed-item-2
                        " feed-item-a="" data-type="a" id="feed-2" data-za-module="FeedItem" data-za-index="">
                            <meta itemprop="ZReactor" data-id="389034" data-meta="">
                            <div class="feed-item-inner">
                                <div class="avatar">
                                    <a title="${vo.user.name}" data-tip="p$t$amuro1230" class="zm-item-link-avatar" target="_blank" href="https://nowcoder.com/people/amuro1230">
                                        <img src="${vo.user.headUrl}" class="zm-item-img-avatar"></a>
                                </div>
                                <div class="feed-main">
                                    <div class="feed-content" data-za-module="AnswerItem">
                                        <meta itemprop="answer-id" content="389034">
                                        <meta itemprop="answer-url-token" content="13174385">

                                        <div class="feed-question-detail-item">
                                            <div class="question-description-plain zm-editable-content"></div>
                                        </div>
                                        <div class="expandable entry-body">
                                            <div class="zm-item-vote">
                                                <a class="zm-item-vote-count js-expand js-vote-count" href="javascript:;" data-bind-votecount="">${vo.followCount}</a></div>
                                            <div class="zm-item-answer-author-info">
                                                <a class="author-link" data-tip="p$b$amuro1230" target="_blank" href="/user/${vo.user.id}">${vo.user.name}</a> 提了问题:
                                                <a class="question_link" style="color: #00BC9B; font-size: medium" target="_blank" href="/question/${vo.question.id}"> ${vo.question.title}</a>
                                                ${vo.question.createdDate?string('yyyy-MM-dd HH:mm:ss')}</div>
                                            <div class="zm-item-vote-info" data-votecount="4168" data-za-module="VoteInfo">
                                                <span class="voters text">
                                                    <a href="#" class="more text">
                                                        <span class="js-voteCount"></span>&nbsp;人赞同</a></span>
                                            </div>
                                            <div class="zm-item-rich-text expandable js-collapse-body" data-resourceid="123114" data-action="/answer/content" data-author-name="李淼" data-entry-url="/question/19857995/answer/13174385">
                                                <div class="zh-summary summary clearfix">问题描述: ${vo.question.content}</div>
                                            </div>
                                        </div>
                                        <div class="feed-meta">
                                            <div class="zm-item-meta answer-actions clearfix js-contentActions">
                                                <div class="zm-meta-panel">
                                                    <a data-follow="q:link" class="follow-link zg-follow meta-item" href="javascript:;" id="sfb-123114">
                                                        <i class="z-icon-follow"></i>关注问题</a>
                                                    <a href="#" name="addcomment" class="meta-item toggle-comment js-toggleCommentBox">
                                                        <i class="z-icon-comment"></i>${vo.question.answerCount} 条回答</a>
                                                    &nbsp;分类:<a href="/categories/${vo.category.id}">${vo.category.name}(${vo.category.questionCount}条提问)</a>


                                                    <button class="meta-item item-collapse js-collapse">
                                                        <i class="z-icon-fold"></i>收起</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </#list>
                    </div>
                    <a href="javascript:;" id="zh-load-more" class="zg-btn-white zg-r3px zu-button-more">更多</a>
                </div>
            </div>
        </div>
    </div>
<@extends name="footer.ftl"></@extends>
<script type="text/javascript" src="/scripts/main/site/profile.js"></script>
</body></html>