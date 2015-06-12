package pojo;

// Generated May 27, 2015 11:09:49 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * PhanHoiHocVienId generated by hbm2java
 */
@Embeddable
public class PhanHoiHocVienId implements java.io.Serializable {

	private int idHocVien;
	private Date thoiGian;

	public PhanHoiHocVienId() {
	}

	public PhanHoiHocVienId(int idHocVien, Date thoiGian) {
		this.idHocVien = idHocVien;
		this.thoiGian = thoiGian;
	}

	@Column(name = "IdHocVien", nullable = false)
	public int getIdHocVien() {
		return this.idHocVien;
	}

	public void setIdHocVien(int idHocVien) {
		this.idHocVien = idHocVien;
	}

	@Column(name = "ThoiGian", nullable = false, length = 23)
	public Date getThoiGian() {
		return this.thoiGian;
	}

	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof PhanHoiHocVienId))
			return false;
		PhanHoiHocVienId castOther = (PhanHoiHocVienId) other;

		return (this.getIdHocVien() == castOther.getIdHocVien())
				&& ((this.getThoiGian() == castOther.getThoiGian()) || (this
						.getThoiGian() != null
						&& castOther.getThoiGian() != null && this
						.getThoiGian().equals(castOther.getThoiGian())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getIdHocVien();
		result = 37 * result
				+ (getThoiGian() == null ? 0 : this.getThoiGian().hashCode());
		return result;
	}

}
