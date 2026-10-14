.class public Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    .line 2
    sput v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->b:I

    const/4 v2, 0x2

    .line 3
    sput v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->c:I

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->a:Landroid/util/SparseArray;

    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->c:I

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/c;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/c/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->b:I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->c:I

    const-string v0, "\u84dd\u7259\u8fde\u63a5\u5668"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u5b9e\u9a8c\u5ba4\u4e32\u53e3\u8fde\u63a5\u5668"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->getComProvider()Lcn/mucang/android/jiakaoyi/signal/communicate/p;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->getComProvider()Lcn/mucang/android/jiakaoyi/signal/communicate/p;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/p;->b()Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "\u4e32\u53e3\u8fde\u63a5\u5668"

    .line 10
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->f(Ljava/lang/Object;)V

    .line 11
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/n/b;

    return-object v0
.end method
