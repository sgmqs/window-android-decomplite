.class Lcom/baidu/mobads/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/b;->a:Lcom/baidu/mobads/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "init"

    iget-object v1, p0, Lcom/baidu/mobads/b;->a:Lcom/baidu/mobads/a;

    invoke-static {v1}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/b;->a:Lcom/baidu/mobads/a;

    const/4 v1, 0x0

    const-string v2, "load ad timeout!"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
