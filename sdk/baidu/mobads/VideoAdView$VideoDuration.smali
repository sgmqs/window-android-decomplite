.class public final enum Lcom/baidu/mobads/VideoAdView$VideoDuration;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/VideoAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/VideoAdView$VideoDuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DURATION_15_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

.field public static final enum DURATION_30_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

.field public static final enum DURATION_45_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

.field private static final synthetic b:[Lcom/baidu/mobads/VideoAdView$VideoDuration;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;

    const-string v1, "DURATION_15_SECONDS"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/mobads/VideoAdView$VideoDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_15_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    new-instance v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;

    const-string v1, "DURATION_30_SECONDS"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v4, v2}, Lcom/baidu/mobads/VideoAdView$VideoDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_30_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    new-instance v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;

    const-string v1, "DURATION_45_SECONDS"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/mobads/VideoAdView$VideoDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_45_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mobads/VideoAdView$VideoDuration;

    sget-object v1, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_15_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_30_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobads/VideoAdView$VideoDuration;->DURATION_45_SECONDS:Lcom/baidu/mobads/VideoAdView$VideoDuration;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->b:[Lcom/baidu/mobads/VideoAdView$VideoDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/VideoAdView$VideoDuration;
    .locals 1

    const-class v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/VideoAdView$VideoDuration;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->b:[Lcom/baidu/mobads/VideoAdView$VideoDuration;

    invoke-virtual {v0}, [Lcom/baidu/mobads/VideoAdView$VideoDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/VideoAdView$VideoDuration;

    return-object v0
.end method


# virtual methods
.method protected getValue()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/VideoAdView$VideoDuration;->a:I

    return v0
.end method
