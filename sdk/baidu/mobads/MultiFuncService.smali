.class public final Lcom/baidu/mobads/MultiFuncService;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/baidu/mobads/MultiFuncService;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/mobads/MultiFuncService;

    invoke-direct {v0}, Lcom/baidu/mobads/MultiFuncService;-><init>()V

    sput-object v0, Lcom/baidu/mobads/MultiFuncService;->b:Lcom/baidu/mobads/MultiFuncService;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/mobads/MultiFuncService;
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.baidu.mobads.remote.MultiFuncService"

    invoke-static {p0, v0}, Lcom/baidu/mobads/b/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->b:Lcom/baidu/mobads/MultiFuncService;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public removeFromFloatView(Landroid/app/Activity;Lcom/baidu/mobads/AdView;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "You should invode like MultiFuncService.getInstance().removeFromFloatView(...)"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->b(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    const-string v1, "removeFromFloatView"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/widget/RelativeLayout;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showInFloatView(Landroid/app/Activity;Lcom/baidu/mobads/AdView;Landroid/graphics/Rect;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "You should invode like MultiFuncService.getInstance().showInFloatView(...)"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->b(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    const-string v1, "showInFloatView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/widget/RelativeLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public videoPreLoad(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "You should invode like MultiFuncService.getInstance().videoPreLoad(...)"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->b(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/mobads/MultiFuncService;->a:Ljava/lang/Class;

    const-string v1, "videoPreLoad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/baidu/mobads/MultiFuncService;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
