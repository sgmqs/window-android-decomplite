.class Lcom/baidu/mobads/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/e;->b:Lcom/baidu/mobads/a;

    iput-object p2, p0, Lcom/baidu/mobads/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/e;->b:Lcom/baidu/mobads/a;

    invoke-static {v0}, Lcom/baidu/mobads/a;->c(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/SplashAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/e;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/mobads/SplashAdListener;->onAdFailed(Ljava/lang/String;)V

    return-void
.end method
