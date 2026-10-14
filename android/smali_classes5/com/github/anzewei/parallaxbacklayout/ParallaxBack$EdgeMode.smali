.class public final enum Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

.field public static final enum EDGE:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

.field public static final enum FULLSCREEN:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->FULLSCREEN:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    .line 2
    new-instance v1, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    const-string v3, "EDGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->EDGE:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->$VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;
    .locals 1

    .line 1
    const-class v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    return-object p0
.end method

.method public static values()[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->$VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    invoke-virtual {v0}, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$EdgeMode;->value:I

    return v0
.end method
