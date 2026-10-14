.class public final enum Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v3, "FLIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

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

.method static getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/mucang/android/ui/widget/pulltorefresh/i;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/mucang/android/ui/widget/pulltorefresh/b;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    return-object v0
.end method
