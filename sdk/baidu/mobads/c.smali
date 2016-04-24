.class Lcom/baidu/mobads/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    iput-object p2, p0, Lcom/baidu/mobads/c;->a:Landroid/content/Context;

    iput p3, p0, Lcom/baidu/mobads/c;->b:I

    iput p4, p0, Lcom/baidu/mobads/c;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    invoke-static {v0}, Lcom/baidu/mobads/a;->b(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/o;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/o;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    invoke-static {v1}, Lcom/baidu/mobads/a;->b(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/o;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobads/o;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/mobads/Ad;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/baidu/mobads/d;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mobads/d;-><init>(Lcom/baidu/mobads/c;Lcom/baidu/mobads/Ad;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    const-string v2, "Internal Error"

    invoke-static {v1, v0, v2}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
