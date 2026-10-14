.class public Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/a;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/tips/TeachTypeData;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 p3, 0x7d0

    invoke-direct {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    .line 3
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez p2, :cond_3

    .line 4
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    iget-byte p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isFront()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :goto_0
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p2, p3, :cond_4

    const/4 p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    .line 9
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p3, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->c(J)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->b(J)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->b:Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/a1/i/i;->a()V

    .line 12
    sget p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$string;->teachingk2_please_gear:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    new-array p3, p4, [Ljava/lang/Object;

    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/g/f/b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    aput-object p4, p3, p5

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->TeachError:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->z(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_5
    return p2
.end method
