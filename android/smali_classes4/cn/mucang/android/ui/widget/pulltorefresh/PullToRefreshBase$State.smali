.class public final enum Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum OVERSCROLLING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum PULL_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RELEASE_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field public static final enum RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;


# instance fields
.field private mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v1, "RESET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v3, "PULL_TO_REFRESH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 3
    new-instance v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v5, "RELEASE_TO_REFRESH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 4
    new-instance v5, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v7, "REFRESHING"

    const/4 v8, 0x3

    const/16 v9, 0x8

    invoke-direct {v5, v7, v8, v9}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 5
    new-instance v7, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v9, "MANUAL_REFRESHING"

    const/4 v10, 0x4

    const/16 v11, 0x9

    invoke-direct {v7, v9, v10, v11}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 6
    new-instance v9, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const-string v11, "OVERSCROLLING"

    const/4 v12, 0x5

    const/16 v13, 0x10

    invoke-direct {v9, v11, v12, v13}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->OVERSCROLLING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

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
    iput p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return-void
.end method

.method static mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->values()[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->$VALUES:[Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->mIntValue:I

    return v0
.end method
