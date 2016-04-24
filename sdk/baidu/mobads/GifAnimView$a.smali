.class Lcom/baidu/mobads/GifAnimView$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/GifAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobads/GifAnimView;


# direct methods
.method private constructor <init>(Lcom/baidu/mobads/GifAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mobads/GifAnimView;Lcom/baidu/mobads/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mobads/GifAnimView$a;-><init>(Lcom/baidu/mobads/GifAnimView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->b(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/x;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->c(Lcom/baidu/mobads/GifAnimView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->d(Lcom/baidu/mobads/GifAnimView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v0}, Lcom/baidu/mobads/GifAnimView;->b(Lcom/baidu/mobads/GifAnimView;)Lcom/baidu/mobads/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobads/x;->d()Lcom/baidu/mobads/y;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    iget-object v2, v0, Lcom/baidu/mobads/y;->a:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/baidu/mobads/GifAnimView;->a(Lcom/baidu/mobads/GifAnimView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/baidu/mobads/y;->b:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v2}, Lcom/baidu/mobads/GifAnimView;->e(Lcom/baidu/mobads/GifAnimView;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v2}, Lcom/baidu/mobads/GifAnimView;->e(Lcom/baidu/mobads/GifAnimView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/GifAnimView$a;->a:Lcom/baidu/mobads/GifAnimView;

    invoke-static {v3}, Lcom/baidu/mobads/GifAnimView;->e(Lcom/baidu/mobads/GifAnimView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method
