.class public Lcom/baidu/mobads/VideoAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/VideoAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/baidu/mobads/VideoAdView$VideoDuration;

.field private b:Z

.field private c:Lcom/baidu/mobads/VideoAdView$VideoSize;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/VideoAdRequest$Builder;)Lcom/baidu/mobads/VideoAdView$VideoDuration;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->a:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobads/VideoAdRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/baidu/mobads/VideoAdRequest$Builder;)Lcom/baidu/mobads/VideoAdView$VideoSize;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->c:Lcom/baidu/mobads/VideoAdView$VideoSize;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/baidu/mobads/VideoAdRequest;
    .locals 2

    new-instance v0, Lcom/baidu/mobads/VideoAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobads/VideoAdRequest;-><init>(Lcom/baidu/mobads/VideoAdRequest$Builder;Lcom/baidu/mobads/VideoAdRequest$1;)V

    return-object v0
.end method

.method public isShowCountdown(Z)Lcom/baidu/mobads/VideoAdRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->b:Z

    return-object p0
.end method

.method public setVideoDuration(Lcom/baidu/mobads/VideoAdView$VideoDuration;)Lcom/baidu/mobads/VideoAdRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->a:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    return-object p0
.end method

.method public setVideoSize(Lcom/baidu/mobads/VideoAdView$VideoSize;)Lcom/baidu/mobads/VideoAdRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/VideoAdRequest$Builder;->c:Lcom/baidu/mobads/VideoAdView$VideoSize;

    return-object p0
.end method
