.class public final Lcom/sixents/sdk/types/APIType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sixents/sdk/types/APIType$ServerParams;
    }
.end annotation


# static fields
.field public static final API_ADDRESS:Ljava/lang/String; = "openapi.sixents.com"

.field public static final API_PORT:I = 0x2537

.field public static API_TYPE_AK:I = 0x1

.field public static API_TYPE_DSK:I = 0x2

.field public static API_TYPE_UNKNOWN:I = 0x3

.field public static final SERVER_ADDRESS:Ljava/lang/String; = "vrs.sixents.com"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
