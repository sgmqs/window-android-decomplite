.class public final Lcom/baidu/mobads/RecommendAd$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/RecommendAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/RecommendAd$Builder;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/mobads/RecommendAd$Builder;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/baidu/mobads/RecommendAd$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/RecommendAd$Builder;)Lcom/baidu/mobads/RecommendAd$RecmdEventListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd$Builder;->c:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/mobads/RecommendAd$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobads/RecommendAd$Builder;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/RecommendAd$Builder;->a:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final build()Lcom/baidu/mobads/RecommendAd;
    .locals 2

    new-instance v0, Lcom/baidu/mobads/RecommendAd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobads/RecommendAd;-><init>(Lcom/baidu/mobads/RecommendAd$Builder;Lcom/baidu/mobads/ae;)V

    return-object v0
.end method

.method public final setEventListener(Lcom/baidu/mobads/RecommendAd$RecmdEventListener;)Lcom/baidu/mobads/RecommendAd$Builder;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/RecommendAd$Builder;->c:Lcom/baidu/mobads/RecommendAd$RecmdEventListener;

    return-object p0
.end method
