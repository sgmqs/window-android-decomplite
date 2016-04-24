.class Lcom/baidu/mobads/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/k;->a:Lcom/baidu/mobads/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/k;->a:Lcom/baidu/mobads/a;

    invoke-static {v0}, Lcom/baidu/mobads/a;->c(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/SplashAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobads/SplashAdListener;->onAdClick()V

    return-void
.end method
