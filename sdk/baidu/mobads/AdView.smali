.class public final Lcom/baidu/mobads/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field protected static final P_VERSION:Ljava/lang/String; = "3.59"

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    const-string v2, ""

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x1

    sget-object v4, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p1, v0}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p4}, Lcom/baidu/mobads/AdSize;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/baidu/mobads/b/a;->a:Z

    if-ne v0, v4, :cond_1

    sget v0, Lcom/baidu/mobads/b/a;->b:I

    if-le v0, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/baidu/mobads/AdView;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/mobads/b/a;->a:Z

    :cond_1
    invoke-static {p1}, Lcom/baidu/mobads/l;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mobads/AdSize;->Banner:Lcom/baidu/mobads/AdSize;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p1, v0}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "getLogable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mobads/b/a;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static getRemoteClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static setAppSec(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v0}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAppSec"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setAppSid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.AdView"

    invoke-static {p0, v0}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAppSid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/baidu/mobads/AdView;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getRemoteInstance()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected prepareForInterstitial(Z)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "prepareForInterstitial"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

.method public setAlpha(F)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setAlpha"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

.method public setBackgroundColor(I)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setBackgroundColor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method protected setInterstialListener(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/baidu/mobads/ab;

    invoke-direct {v4, p1, p2}, Lcom/baidu/mobads/ab;-><init>(Lcom/baidu/mobads/InterstitialAdListener;Lcom/baidu/mobads/InterstitialAd;)V

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

.method public setListener(Lcom/baidu/mobads/AdViewListener;)V
    .locals 5

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
    sget-object v0, Lcom/baidu/mobads/AdView;->b:Ljava/lang/Class;

    const-string v1, "setListener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/AdView;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Lcom/baidu/mobads/u;

    invoke-direct {v4, p1, p0}, Lcom/baidu/mobads/u;-><init>(Lcom/baidu/mobads/AdViewListener;Lcom/baidu/mobads/AdView;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
