.class public Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public name:Ljava/lang/String;

.field public stepAliasName:Ljava/lang/String;

.field public type:I

.field public zhName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->type:I

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->name:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->zhName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->stepAliasName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->type:I

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->stepName:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->name:Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->zhName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;->stepAliasName:Ljava/lang/String;

    return-void
.end method
