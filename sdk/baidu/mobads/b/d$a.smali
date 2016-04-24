.class final Lcom/baidu/mobads/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/baidu/mobads/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/mobads/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/mobads/b/d;-><init>(Lcom/baidu/mobads/b/d$1;)V

    sput-object v0, Lcom/baidu/mobads/b/d$a;->a:Lcom/baidu/mobads/b/d;

    return-void
.end method
