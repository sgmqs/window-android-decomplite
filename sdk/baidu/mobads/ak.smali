.class Lcom/baidu/mobads/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/RecommendAd$RecmdEventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mobads/ak;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdShow"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/ak;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    invoke-interface {v0}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconShow()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v2, "onAdClick"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/ak;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    invoke-interface {v0}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconClick()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v2, "onAdFailed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "p_reason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/ak;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    invoke-interface {v1, v0}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconBindFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
