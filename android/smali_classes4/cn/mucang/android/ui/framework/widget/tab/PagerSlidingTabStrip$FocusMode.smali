.class final enum Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FocusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

.field public static final enum CENTER:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

.field public static final enum CUSTOM:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

.field public static final enum FIRST:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

.field public static final enum INIT_TAB:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    const-string v1, "FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->FIRST:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    const-string v3, "INIT_TAB"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->INIT_TAB:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    .line 3
    new-instance v3, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    const-string v5, "CENTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->CENTER:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    .line 4
    new-instance v5, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    const-string v7, "CUSTOM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->CUSTOM:Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->$VALUES:[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

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

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->$VALUES:[Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/framework/widget/tab/PagerSlidingTabStrip$FocusMode;

    return-object v0
.end method
