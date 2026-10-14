.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final variable:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

.field public final variableHandler:Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;->variable:Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/ActionEventEntry;->variableHandler:Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;

    return-void
.end method
