.class Lcom/baidu/mobads/VideoAdView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/VideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobads/VideoAdView;

.field private final b:Lcom/baidu/mobads/VideoAdViewListener;


# direct methods
.method public constructor <init>(Lcom/baidu/mobads/VideoAdView;Lcom/baidu/mobads/VideoAdViewListener;Lcom/baidu/mobads/VideoAdView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/VideoAdView$a;->a:Lcom/baidu/mobads/VideoAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onVideoStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/VideoAdViewListener;->onVideoStart()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "onVideoPrepared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/VideoAdViewListener;->onVideoPrepared()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string v1, "onVideoFinish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/VideoAdViewListener;->onVideoFinish()V

    goto :goto_0

    :cond_3
    const-string v1, "onVideoError"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/VideoAdViewListener;->onVideoError()V

    goto :goto_0

    :cond_4
    const-string v1, "onVideoClickAd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdView$a;->b:Lcom/baidu/mobads/VideoAdViewListener;

    invoke-interface {v0}, Lcom/baidu/mobads/VideoAdViewListener;->onVideoClickAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
