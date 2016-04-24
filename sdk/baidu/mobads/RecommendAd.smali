.class public final Lcom/baidu/mobads/RecommendAd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/RecommendAd$Builder;,
        Lcom/baidu/mobads/RecommendAd$RecmdEventListener;
    }
.end annotation


# static fields
.field static final a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobads/ae;

    invoke-direct {v0}, Lcom/baidu/mobads/ae;-><init>()V

    sput-object v0, Lcom/baidu/mobads/RecommendAd;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mobads/RecommendAd$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/baidu/mobads/RecommendAd$Builder;->a(Lcom/baidu/mobads/RecommendAd$Builder;)Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/RecommendAd;->a:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    iput-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    :cond_0
    invoke-static {p1}, Lcom/baidu/mobads/RecommendAd$Builder;->b(Lcom/baidu/mobads/RecommendAd$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/RecommendAd;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/baidu/mobads/RecommendAd$Builder;->c(Lcom/baidu/mobads/RecommendAd$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobads/RecommendAd;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->c:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    const-string v1, "RecommondAd\'s Icon must be setted!"

    invoke-interface {v0, v1}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconBindFailed(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobads/RecommendAd$Builder;Lcom/baidu/mobads/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/RecommendAd;-><init>(Lcom/baidu/mobads/RecommendAd$Builder;)V

    return-void
.end method

.method static synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/RecommendAd;->e:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    sput-object p0, Lcom/baidu/mobads/RecommendAd;->e:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/mobads/RecommendAd;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobads/RecommendAd;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/RecommendAd;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mobads/RecommendAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobads/RecommendAd;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobads/RecommendAd;)Lcom/baidu/mobads/RecommendAd$RecmdEventListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    return-object v0
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
    .locals 3

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/RecommendAd;->e:Ljava/lang/Class;

    const-string v1, "destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/RecommendAd;->f:Ljava/lang/Object;

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

.method public load(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/baidu/mobads/ak;

    iget-object v1, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    invoke-direct {v0, v1}, Lcom/baidu/mobads/ak;-><init>(Lcom/baidu/mobads/RecommendAd$RecmdEventListener;)V

    new-instance v1, Lcom/baidu/mobads/af;

    invoke-direct {v1, p0, p1, v0}, Lcom/baidu/mobads/af;-><init>(Lcom/baidu/mobads/RecommendAd;Landroid/content/Context;Lcom/baidu/mobads/ak;)V

    invoke-virtual {v1}, Lcom/baidu/mobads/af;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd;->d:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    const-string v1, "Internal Error - cannot invoke object when load"

    invoke-interface {v0, v1}, Lcom/baidu/mobads/RecommendAd$RecmdEventListener;->onIconBindFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
