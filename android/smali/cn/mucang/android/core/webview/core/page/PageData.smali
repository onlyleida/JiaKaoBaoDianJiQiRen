.class public Lcn/mucang/android/core/webview/core/page/PageData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/ui/page/PageState;


# instance fields
.field private pageJsonData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/PageData;->pageJsonData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPageJsonData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/core/page/PageData;->pageJsonData:Ljava/lang/String;

    return-object v0
.end method

.method public setPageJsonData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/webview/core/page/PageData;->pageJsonData:Ljava/lang/String;

    return-void
.end method
