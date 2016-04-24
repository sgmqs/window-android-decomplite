.class public final Lcom/baidu/mobads/InterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mobads/AdView;

.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/mobads/AdSize;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/mobads/InterstitialAdListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobads/InterstitialAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    new-instance v0, Lcom/baidu/mobads/ac;

    invoke-direct {v0, p0}, Lcom/baidu/mobads/ac;-><init>(Lcom/baidu/mobads/InterstitialAd;)V

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    iput-object p1, p0, Lcom/baidu/mobads/InterstitialAd;->c:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v0

    sget-object v1, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v0

    sget-object v1, Lcom/baidu/mobads/AdSize;->InterstitialForVideoPausePlay:Lcom/baidu/mobads/AdSize;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "Please use the right AdSize when new InterstitialAd"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->b(Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    :goto_0
    iput-object p3, p0, Lcom/baidu/mobads/InterstitialAd;->e:Ljava/lang/String;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/baidu/mobads/AdSize;->InterstitialGame:Lcom/baidu/mobads/AdSize;

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/mobads/InterstitialAd;-><init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppSec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobads/AdView;->setAppSec(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setAppSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    :cond_0
    return-void
.end method

.method protected getAdView()Lcom/baidu/mobads/AdView;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    return v0
.end method

.method public loadAd()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/AdView;->prepareForInterstitial(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->c:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    iget-object v4, p0, Lcom/baidu/mobads/InterstitialAd;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-virtual {v0, v1, p0}, Lcom/baidu/mobads/AdView;->setInterstialListener(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public loadAdForVideoApp(II)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->c:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobads/InterstitialAd;->d:Lcom/baidu/mobads/AdSize;

    iget-object v4, p0, Lcom/baidu/mobads/InterstitialAd;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;

    invoke-virtual {v0, v1, p0}, Lcom/baidu/mobads/AdView;->setInterstialListener(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-static {}, Lcom/baidu/mobads/AdView;->getRemoteClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadAdForVideoApp"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdView;->getRemoteInstance()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected removeAd()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-static {}, Lcom/baidu/mobads/AdView;->getRemoteClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeInterstitialAd"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdView;->getRemoteInstance()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setAdReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    return-void
.end method

.method public setListener(Lcom/baidu/mobads/InterstitialAdListener;)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/baidu/mobads/InterstitialAd;->f:Lcom/baidu/mobads/InterstitialAdListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public showAd(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/mobads/InterstitialAd;->showAdInParentForVideoApp(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method public showAdInParentForVideoApp(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-static {}, Lcom/baidu/mobads/AdView;->getRemoteClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "showInterstitialAd"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/widget/RelativeLayout;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/InterstitialAd;->a:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdView;->getRemoteInstance()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/InterstitialAd;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
