.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;
.super Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$onBindViewHolder$watcher$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/VariableWatcher;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;",
        "textChanged",
        "",
        "v",
        "input",
        "",
        "TeachingK2_release"
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

.field final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;

.field final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemWheelCrossLineBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemWheelCrossLineBinding;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;Ljava/lang/String;)V

    return-void
.end method

.method protected c(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;Ljava/lang/String;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "input"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v0, Lkotlin/text/d;->a:Ljava/nio/charset/Charset;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_3

    aget-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x30

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    const-string v2, "\u8bbe\u7f6e\u5931\u8d25\n\u5de6\u524d\u8f6e:1, \u5de6\u540e\u8f6e:2, \u53f3\u524d\u8f6e:3, \u53f3\u540e\u8f6e:4"

    .line 6
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;->wheelIndex:Ljava/util/List;

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->c:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder$a;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method
