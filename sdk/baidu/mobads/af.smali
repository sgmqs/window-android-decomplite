.class Lcom/baidu/mobads/af;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/baidu/mobads/ak;

.field final synthetic c:Lcom/baidu/mobads/RecommendAd;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/RecommendAd;Landroid/content/Context;Lcom/baidu/mobads/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    iput-object p2, p0, Lcom/baidu/mobads/af;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/baidu/mobads/af;->b:Lcom/baidu/mobads/ak;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    invoke-static {}, Lcom/baidu/mobads/RecommendAd;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/af;->a:Landroid/content/Context;

    const-string v1, "com.baidu.mobads.remote.RecommendAd"

    invoke-static {v0, v1}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/RecommendAd;->a(Ljava/lang/Class;)Ljava/lang/Class;

    :cond_0
    invoke-static {}, Lcom/baidu/mobads/RecommendAd;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mobads/RecommendAd;->a(Lcom/baidu/mobads/RecommendAd;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/baidu/mobads/RecommendAd;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bindIcon"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/view/View;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/os/Handler$Callback;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    invoke-static {v1}, Lcom/baidu/mobads/RecommendAd;->a(Lcom/baidu/mobads/RecommendAd;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/mobads/af;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    invoke-static {v4}, Lcom/baidu/mobads/RecommendAd;->b(Lcom/baidu/mobads/RecommendAd;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    invoke-static {v4}, Lcom/baidu/mobads/RecommendAd;->c(Lcom/baidu/mobads/RecommendAd;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/baidu/mobads/af;->b:Lcom/baidu/mobads/ak;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/mobads/af;->c:Lcom/baidu/mobads/RecommendAd;

    invoke-static {v0}, Lcom/baidu/mobads/RecommendAd;->d(Lcom/baidu/mobads/RecommendAd;)Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    move-result-object v0

    const-string v1, "Internal Error - cannot invoke object when load"

    invoke-interface {v0, v1}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconBindFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
