.class public Lcn/mucang/android/core/ui/page/PageHistory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private pageArgument:Lcn/mucang/android/core/ui/page/PageArgument;

.field private pageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;

.field pageState:Lcn/mucang/android/core/ui/page/PageState;

.field transient pageView:Lcn/mucang/android/core/ui/page/PageView;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;",
            "Lcn/mucang/android/core/ui/page/PageArgument;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/core/ui/page/PageHistory;-><init>(Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcn/mucang/android/core/ui/page/PageArgument;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;",
            "Lcn/mucang/android/core/ui/page/PageArgument;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageClass:Ljava/lang/Class;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageArgument:Lcn/mucang/android/core/ui/page/PageArgument;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPageArgument()Lcn/mucang/android/core/ui/page/PageArgument;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageArgument:Lcn/mucang/android/core/ui/page/PageArgument;

    return-object v0
.end method

.method public getPageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcn/mucang/android/core/ui/page/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method setPageArgument(Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageArgument:Lcn/mucang/android/core/ui/page/PageArgument;

    return-void
.end method

.method setPageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/PageHistory;->pageName:Ljava/lang/String;

    return-void
.end method
