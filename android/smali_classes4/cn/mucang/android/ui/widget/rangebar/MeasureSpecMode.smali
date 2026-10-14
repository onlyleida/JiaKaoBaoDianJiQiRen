.class public final enum Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

.field public static final enum AT_MOST:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

.field public static final enum EXACTLY:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

.field public static final enum UNSPECIFIED:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;


# instance fields
.field private final mModeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    const-string v1, "AT_MOST"

    const/4 v2, 0x0

    const/high16 v3, -0x80000000

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->AT_MOST:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    const-string v3, "EXACTLY"

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->EXACTLY:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    .line 3
    new-instance v3, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    const-string v5, "UNSPECIFIED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->UNSPECIFIED:Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->$VALUES:[Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

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
    iput p3, p0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->mModeValue:I

    return-void
.end method

.method public static getMode(I)Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    .line 2
    invoke-static {}, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->values()[Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->getModeValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->$VALUES:[Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;

    return-object v0
.end method


# virtual methods
.method public getModeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/rangebar/MeasureSpecMode;->mModeValue:I

    return v0
.end method
