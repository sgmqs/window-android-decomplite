.class public Lcom/fy/adsdk/demon/AdStartUp;
.super Ljava/lang/Object;
.source "AdStartUp.java"


# static fields
.field public static _context:Landroid/content/Context;

.field private static adThread:Ljava/lang/Thread;

.field private static adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/fy/adsdk/demon/AdStartUp$1;

    invoke-direct {v0}, Lcom/fy/adsdk/demon/AdStartUp$1;-><init>()V

    sput-object v0, Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdStartUp;->init(Landroid/content/Context;)V

    .line 44
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fy/adsdk/demon/AdStartUp$2;

    invoke-direct {v1}, Lcom/fy/adsdk/demon/AdStartUp$2;-><init>()V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method static synthetic access$000()Lcom/fy/adsdk/demon/BdAdViewHelper;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->adThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdStartUp;->init(Landroid/content/Context;)V

    .line 55
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fy/adsdk/demon/AdStartUp$3;

    invoke-direct {v1}, Lcom/fy/adsdk/demon/AdStartUp$3;-><init>()V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdStartUp;->init(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fy/adsdk/demon/AdStartUp$4;

    invoke-direct {v1}, Lcom/fy/adsdk/demon/AdStartUp$4;-><init>()V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void
.end method

.method public static executeTask()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fy/adsdk/demon/AdStartUp$5;

    invoke-direct {v1}, Lcom/fy/adsdk/demon/AdStartUp$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/fy/adsdk/demon/AdStartUp;->adThread:Ljava/lang/Thread;

    .line 120
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->adThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sput-object p0, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/fy/adsdk/demon/AdConfig;

    invoke-direct {v0}, Lcom/fy/adsdk/demon/AdConfig;-><init>()V

    .line 37
    .local v0, "config":Lcom/fy/adsdk/demon/AdConfig;
    new-instance v1, Lcom/fy/adsdk/demon/BdAdViewHelper;

    sget-object v2, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;-><init>(Landroid/content/Context;Lcom/fy/adsdk/demon/AdConfig;)V

    sput-object v1, Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    .line 38
    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    sput-object v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    .line 39
    return-void
.end method

.method public static startService()V
    .locals 3

    .prologue
    .line 78
    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 80
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    const-class v2, Lcom/fy/adsdk/demon/AdDaemonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "serviceIntent":Landroid/content/Intent;
    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 82
    return-void

    .line 78
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static stopService()V
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    const-class v2, Lcom/fy/adsdk/demon/AdDaemonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "serviceIntent":Landroid/content/Intent;
    sget-object v1, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 92
    return-void

    .line 88
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
