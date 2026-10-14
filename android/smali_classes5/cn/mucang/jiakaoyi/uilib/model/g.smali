.class public abstract Lcn/mucang/jiakaoyi/uilib/model/g;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/j0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000bJ\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00182\u0006\u0010\u0004\u001a\u00020\u0005H$R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/model/ListViewModel;",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "cursor",
        "",
        "dataList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "getDataList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "hasMore",
        "",
        "getHasMore",
        "()Z",
        "setHasMore",
        "(Z)V",
        "loadDataState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "getLoadDataState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadData",
        "",
        "firstLoad",
        "Lcn/mucang/android/core/api/fetch/FetchMoreResponse;",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->a:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->b:Lcn/mucang/jiakaoyi/uilib/model/f;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcn/mucang/jiakaoyi/uilib/model/g;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/model/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->b:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final d()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/model/g;->a:Landroidx/lifecycle/z;

    return-object v0
.end method

.method protected abstract e(Ljava/lang/String;)Lcn/mucang/android/core/api/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/mucang/android/core/api/d/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method
