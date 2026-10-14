.class public final enum Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

.field public static final enum BOTTOM:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

.field public static final enum LEFT:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

.field public static final enum RIGHT:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

.field public static final enum TOP:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->LEFT:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    new-instance v1, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    const-string v4, "RIGHT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->RIGHT:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    new-instance v4, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    const-string v6, "TOP"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->TOP:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    new-instance v6, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    const-string v8, "BOTTOM"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->BOTTOM:Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    new-array v7, v7, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    .line 2
    sput-object v7, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->$VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

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
    iput p3, p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;
    .locals 1

    .line 1
    const-class v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    return-object p0
.end method

.method public static values()[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->$VALUES:[Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    invoke-virtual {v0}, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/github/anzewei/parallaxbacklayout/ParallaxBack$Edge;->value:I

    return v0
.end method
