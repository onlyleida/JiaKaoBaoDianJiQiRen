.class public final Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;",
        "Ljava/io/Serializable;",
        "()V",
        "chinese",
        "",
        "getChinese",
        "()Ljava/lang/String;",
        "setChinese",
        "(Ljava/lang/String;)V",
        "secondLanguage",
        "getSecondLanguage",
        "setSecondLanguage",
        "sourceId",
        "",
        "getSourceId",
        "()J",
        "setSourceId",
        "(J)V",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "framework_release"
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
.field private chinese:Ljava/lang/String;

.field private secondLanguage:Ljava/lang/String;

.field private sourceId:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChinese()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->chinese:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecondLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->secondLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourceId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->sourceId:J

    return-wide v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->type:I

    return v0
.end method

.method public final setChinese(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->chinese:Ljava/lang/String;

    return-void
.end method

.method public final setSecondLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->secondLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setSourceId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->sourceId:J

    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/framework/language/LanguageModel;->type:I

    return-void
.end method
