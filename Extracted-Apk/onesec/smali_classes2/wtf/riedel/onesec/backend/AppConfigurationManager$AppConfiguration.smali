.class public final Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;
.super Ljava/lang/Object;
.source "AppConfigurationManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwtf/riedel/onesec/backend/AppConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppConfiguration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0003J)\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0006H\u00d6\u0001R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0015"
    }
    d2 = {
        "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;",
        "",
        "version",
        "",
        "apps",
        "",
        "",
        "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
        "(ILjava/util/Map;)V",
        "getApps",
        "()Ljava/util/Map;",
        "getVersion",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final apps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    .line 35
    iput-object p2, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;ILjava/util/Map;ILjava/lang/Object;)Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->copy(ILjava/util/Map;)Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    return v0
.end method

.method public final component2()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(ILjava/util/Map;)Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
            ">;)",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;

    invoke-direct {v0, p1, p2}, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;-><init>(ILjava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;

    iget v1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    iget v3, p1, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    iget-object p1, p1, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getApps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfigurationItem;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 34
    iget v0, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfiguration(version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwtf/riedel/onesec/backend/AppConfigurationManager$AppConfiguration;->apps:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
