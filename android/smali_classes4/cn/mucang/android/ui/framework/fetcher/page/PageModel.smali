.class public Lcn/mucang/android/ui/framework/fetcher/page/PageModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;
    }
.end annotation


# instance fields
.field private cursor:Ljava/lang/String;

.field private hasMore:Ljava/lang/Boolean;

.field private nextPageCursor:Ljava/lang/String;

.field private page:I

.field private pageMode:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

.field private pageSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageMode:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    .line 4
    iput p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->page:I

    .line 5
    iput p2, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p2, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageSize:I

    .line 8
    iput-object p3, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageMode:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->cursor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCursor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageCursor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->nextPageCursor:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->page:I

    return v0
.end method

.method public getPageMode()Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageMode:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageSize:I

    return v0
.end method

.method public hasMore()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->hasMore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCursor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->cursor:Ljava/lang/String;

    return-void
.end method

.method public setHasMore(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->hasMore:Ljava/lang/Boolean;

    return-void
.end method

.method public setNextPageCursor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->nextPageCursor:Ljava/lang/String;

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->page:I

    return-void
.end method

.method public setPageMode(Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageMode:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel;->pageSize:I

    return-void
.end method
