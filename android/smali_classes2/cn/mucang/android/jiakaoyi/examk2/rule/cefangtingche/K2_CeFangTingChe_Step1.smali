.class public Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_Step1;
.super Lcn/mucang/android/jiakaoyi/examk2/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/c/a<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/collision/b;Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/examk2/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method protected doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/c/a;->doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->QiBuShaChe:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    return-void
.end method

.method public stepName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4fa7\u65b9\u505c\u8f66"

    return-object v0
.end method
