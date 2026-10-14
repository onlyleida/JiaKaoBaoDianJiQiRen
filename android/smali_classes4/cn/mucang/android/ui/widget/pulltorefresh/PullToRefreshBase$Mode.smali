.class public final enum Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum DISABLED:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum MANUAL_REFRESH_ONLY:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static PULL_DOWN_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static final enum PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field public static PULL_UP_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v3, "PULL_FROM_START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 3
    new-instance v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v5, "PULL_FROM_END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 4
    new-instance v5, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 5
    new-instance v7, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v9, "MANUAL_REFRESH_ONLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 7
    sput-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_DOWN_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 8
    sput-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_UP_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

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
    iput p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->mIntValue:I

    return-void
.end method

.method static getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method static mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->values()[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->mIntValue:I

    return v0
.end method

.method permitsPullToRefresh()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showFooterLoadingLayout()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showHeaderLoadingLayout()Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
