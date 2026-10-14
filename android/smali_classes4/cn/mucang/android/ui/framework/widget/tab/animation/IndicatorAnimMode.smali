.class public final enum Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

.field public static final enum NONE:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

.field public static final enum WIDTH_SCALE:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->NONE:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    const-string v3, "WIDTH_SCALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->WIDTH_SCALE:Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->$VALUES:[Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->$VALUES:[Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/framework/widget/tab/animation/IndicatorAnimMode;

    return-object v0
.end method
