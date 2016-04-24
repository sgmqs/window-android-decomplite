.class final Lcom/baidu/mobads/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mobads/RecommendAd$RecmdEventListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconBindFailed(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "RecommendAd Error - "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->b([Ljava/lang/Object;)I

    return-void
.end method

.method public onIconClick()V
    .locals 1

    const-string v0, "icon clicked. if you want to count events, use \'Builder.setEventListener\' before \'Builder.build\' is invoked"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->d(Ljava/lang/String;)I

    return-void
.end method

.method public onIconShow()V
    .locals 1

    const-string v0, "icon show. if you want to count events, use \'Builder.setEventListener\' before \'Builder.build\' is invoked"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->d(Ljava/lang/String;)I

    return-void
.end method
