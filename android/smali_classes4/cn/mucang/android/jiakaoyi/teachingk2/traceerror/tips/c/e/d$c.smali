.class Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->a:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->a:Z

    if-eqz p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget p3, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->data1:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object p3

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p5

    invoke-virtual {p5, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p5

    const/4 p7, 0x1

    if-eqz p5, :cond_1

    iget-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->b:Z

    if-nez p5, :cond_1

    .line 4
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->b:Z

    .line 5
    iput-byte p7, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 6
    invoke-interface {p0, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p5

    iget p5, p5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    const/16 p8, 0x10e

    if-le p5, p8, :cond_2

    const/4 p5, 0x1

    goto :goto_0

    :cond_2
    const/4 p5, 0x0

    :goto_0
    if-eqz p5, :cond_4

    .line 8
    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p8

    const-wide v0, 0x40d5f90000000000L    # 22500.0

    cmpg-double p5, p8, v0

    if-gtz p5, :cond_4

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    const-string p5, ",\u706f\u5149\u70b9\u4f4d\u7f6e:"

    if-eqz p1, :cond_3

    .line 10
    iput-byte p7, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 11
    invoke-interface {p0, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u706f\u5149:\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->a:Z

    goto :goto_1

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "\u672a\u6253"

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->b(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 15
    iput-byte p1, p6, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;->triggerState:B

    .line 16
    invoke-interface {p0, p6}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;->c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    .line 17
    iput-boolean p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/e/d$c;->a:Z

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u672a\u6253\u706f\u5149:\u5f53\u524d\u4f4d\u7f6e:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->b(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/a;->a(Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/c/b;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;)V

    return-void
.end method
