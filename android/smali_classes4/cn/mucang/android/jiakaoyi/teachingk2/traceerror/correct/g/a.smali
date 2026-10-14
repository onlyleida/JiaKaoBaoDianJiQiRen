.class public Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

.field public final b:Ljava/lang/String;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public final d:Z

.field private e:Z

.field public final f:D

.field public final g:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/c;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->c:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 5
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->d:Z

    .line 6
    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->g:Z

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->e:Z

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->forwardPoint:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->f:D

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->e:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/correct/g/a;->e:Z

    return-void
.end method
