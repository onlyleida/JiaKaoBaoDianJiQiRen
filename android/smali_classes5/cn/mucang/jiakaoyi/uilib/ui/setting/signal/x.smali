.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J \u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000e\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0014H\u0007J\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u001d\u001a\u00020\u0004H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/BoxSignalManager;",
        "",
        "()V",
        "addItem",
        "",
        "extensionId",
        "",
        "showName",
        "",
        "values",
        "",
        "list",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandard2Item;",
        "changeItem",
        "signalId",
        "type",
        "checkAll",
        "checkExtension",
        "getExtensionList",
        "",
        "signalModel",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "getSelectList",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$ItemModel;",
        "getVersion1List",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;",
        "getVersion2List",
        "getVersion3List",
        "uncheckAll",
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


# static fields
.field public static final a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;-><init>()V

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(ILjava/lang/String;JLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v0

    .line 3
    invoke-static {p3, p4, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->e(JI)Z

    move-result p3

    const/4 p4, 0x0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    const-string v3, "signal.signalName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v2, p2, v1, v3, p4}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    move-object p4, p2

    goto :goto_0

    .line 5
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 6
    :goto_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    const/4 v2, 0x1

    invoke-direct {v0, p3, p4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;-><init>(ZLjava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->f(I)V

    .line 8
    sget-object p4, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    :goto_1
    if-nez p4, :cond_2

    .line 10
    new-instance p4, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;

    invoke-direct {p4, p3, p2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;-><init>(ZLjava/lang/String;Z)V

    .line 11
    invoke-virtual {p4, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;->f(I)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    :goto_2
    return-void
.end method

.method private final b(III)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object p2

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object p1

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    if-nez v0, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    .line 5
    sget-object p3, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    if-nez p3, :cond_3

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->a(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final c()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;

    move-result-object v0

    .line 4
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 5
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->extensionId:I

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->signalId:I

    invoke-direct {v5, v6, v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;

    move-result-object v0

    .line 8
    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 9
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->extensionId:I

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->signalId:I

    invoke-direct {v5, v6, v4, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static final d(I)V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x3

    if-eqz v3, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;

    move-result-object v0

    .line 4
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 5
    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->extensionId:I

    if-ne v5, p0, :cond_2

    .line 6
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->signalId:I

    invoke-direct {p0, v5, v0, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result v0

    if-ne v0, v2, :cond_4

    :goto_2
    if-eqz v2, :cond_7

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;

    move-result-object v0

    .line 9
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 10
    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->extensionId:I

    if-ne v5, p0, :cond_6

    .line 11
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->signalId:I

    invoke-direct {p0, v5, v0, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    return-void

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public static final e(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "signalModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->A:J

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_2

    .line 4
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->h(J)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result p0

    if-ne p0, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 6
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->i(J)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    .line 7
    :cond_5
    sget-object p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    invoke-direct {p0, v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->g(J)Ljava/util/List;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static final f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v4

    if-ne v4, v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "it.showName"

    if-eqz v4, :cond_2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;

    move-result-object v1

    .line 5
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    .line 6
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->showName:Ljava/lang/String;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->extensionId:I

    invoke-direct {v6, v7, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result v1

    if-ne v1, v3, :cond_3

    :goto_2
    if-eqz v3, :cond_5

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;

    move-result-object v1

    .line 9
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    .line 10
    new-instance v6, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->showName:Ljava/lang/String;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->extensionId:I

    invoke-direct {v6, v7, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 11
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v1

    .line 12
    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    .line 13
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    const-string v7, "it.extensionName"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->id:I

    invoke-direct {v5, v6, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/ExtensionSelectActivity$c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method private final g(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->b(Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;Ljava/lang/Class;Landroid/os/Bundle;ILjava/lang/Object;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v2

    if-ne v2, v3, :cond_0

    :goto_0
    if-nez v3, :cond_2

    .line 4
    new-instance v2, Lkotlin/a0/c;

    const/16 v3, 0x13

    invoke-direct {v2, v5, v3}, Lkotlin/a0/c;-><init>(II)V

    invoke-static {v1, v2}, Lkotlin/collections/k;->W([Ljava/lang/Object;Lkotlin/a0/c;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;

    .line 5
    :cond_2
    array-length v2, v1

    :goto_1
    if-ge v5, v2, :cond_5

    aget-object v3, v1, v5

    .line 6
    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->id:I

    invoke-static {p1, p2, v6}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->e(JI)Z

    move-result v6

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->e(Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;)Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v7, v4

    goto :goto_2

    .line 8
    :cond_3
    new-instance v8, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/config/CarSignal;->signalName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_4

    .line 9
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/SerialExtension;->extensionName:Ljava/lang/String;

    const-string v8, "it.extensionName"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private final h(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;

    move-result-object v7

    .line 3
    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v0, v7, v9

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->extensionId:I

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->showName:Ljava/lang/String;

    const-string v0, "it.showName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a(ILjava/lang/String;JLjava/util/List;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method private final i(J)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;

    move-result-object v7

    .line 3
    array-length v8, v7

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v0, v7, v9

    .line 4
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->extensionId:I

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->showName:Ljava/lang/String;

    const-string v0, "it.showName"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a(ILjava/lang/String;JLjava/util/List;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public static final j()V
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->b()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->parse(I)Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal2()Z

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x2

    if-eqz v3, :cond_2

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;

    move-result-object v0

    .line 4
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 5
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->extensionId:I

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal2;->signalId:I

    invoke-direct {v5, v6, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 6
    :cond_4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/consts/BoxVersion;->useBoxSignal3()Z

    move-result v0

    if-ne v0, v2, :cond_3

    :goto_2
    if-eqz v2, :cond_5

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->values()[Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;

    move-result-object v0

    .line 8
    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 9
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;

    iget v6, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->extensionId:I

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/config/BoxSignal3;->signalId:I

    invoke-direct {v5, v6, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->b(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method
