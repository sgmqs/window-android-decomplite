.class Lcom/baidu/mobads/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/j;->a:Lcom/baidu/mobads/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/j;->a:Lcom/baidu/mobads/a;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobads/j;->a:Lcom/baidu/mobads/a;

    invoke-static {v0}, Lcom/baidu/mobads/a;->c(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/SplashAdListener;->onAdDismissed()V

    return-void
.end method
